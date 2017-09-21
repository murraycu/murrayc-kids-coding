int[] COINS = {10, 5, 2, 1};

void print_list(ArrayList<Integer> coins) {
  for (Integer c : coins) {
    print(c + " ");
  }

  println();
}

void print_combinations(int total) {
  print_combinations(total, 0, new ArrayList<Integer>(), Integer.MAX_VALUE);
}

void print_combinations(int total, int sum, ArrayList<Integer> prefix, int previous) {
  for (int c : COINS) {
    // Enforce a decreasing order,
    // so we generate unique combinations:
    if (c > previous) {
      continue;
    }

    // Have we gone past the total?
    int next = sum + c;
    if (next > total) {
      // Try the next coin instead.
      continue;
    }

    // Add a coin at the end:
    prefix.add(c);

    if (next == total) {
      // Use the new combination:
      print_list(prefix);
    } else {
      // Build more using the new combination,
      // trying to reach the total:
      print_combinations(total, next, prefix, c);
    }

    // Remove the last coin:
    prefix.remove(prefix.size() - 1);
  }
}

void setup() {
  print_combinations(20);
}
